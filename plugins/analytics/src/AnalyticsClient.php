<?php

namespace Botble\Analytics;

use DateTime;
use Google_Service_Analytics;
use Illuminate\Contracts\Cache\Repository;

class AnalyticsClient
{
    /**
     * @var Google_Service_Analytics
     */
    protected $service;

    /**
     * @var Repository
     */
    protected $cache;

    /**
     * @var int
     */
    protected $cacheLifeTimeInMinutes = 0;

    /**
     * AnalyticsClient constructor.
     * @param Google_Service_Analytics $service
     * @param Repository $cache
     * @author Freek Van der Herten <freek@spatie.be>
     */
    public function __construct(Google_Service_Analytics $service, Repository $cache)
    {
        $this->service = $service;

        $this->cache = $cache;
    }

    /**
     * Set the cache time.
     *
     * @param int $cacheLifeTimeInMinutes
     *
     * @return self
     * @author Freek Van der Herten <freek@spatie.be>
     */
    public function setCacheLifeTimeInMinutes($cacheLifeTimeInMinutes)
    {
        $this->cacheLifeTimeInMinutes = $cacheLifeTimeInMinutes;

        return $this;
    }

    /**
     * Query the Google Analytics Service with given parameters.
     *
     * @param string $viewId
     * @param \DateTime $startDate
     * @param \DateTime $endDate
     * @param string $metrics
     * @param array $others
     *
     * @return array|null
     * @author Freek Van der Herten <freek@spatie.be>
     */
    public function performQuery($viewId, DateTime $startDate, DateTime $endDate, $metrics, array $others = [])
    {
        $cacheName = $this->determineCacheName(func_get_args());

        if ($this->cacheLifeTimeInMinutes == 0) {
            $this->cache->forget($cacheName);
        }

        return $this->cache->remember($cacheName, $this->cacheLifeTimeInMinutes, function () use ($viewId, $startDate, $endDate, $metrics, $others) {
            return $this->service->data_ga->get(
                'ga:' . $viewId,
                $startDate->format('Y-m-d'),
                $endDate->format('Y-m-d'),
                $metrics,
                $others
            );
        });
    }

    /**
     * @return Google_Service_Analytics
     * @author Freek Van der Herten <freek@spatie.be>
     */
    public function getAnalyticsService()
    {
        return $this->service;
    }

    /**
     * Determine the cache name for the set of query properties given.
     * @author Freek Van der Herten <freek@spatie.be>
     * @param array $properties
     * @return string
     */
    protected function determineCacheName(array $properties)
    {
        return 'botble.laravel-analytics.' . md5(serialize($properties));
    }
}
