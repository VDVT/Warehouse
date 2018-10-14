<?php

namespace Botble\Literature\Repositories\Interfaces;

use Botble\Support\Repositories\Interfaces\RepositoryInterface;

interface LiteratureInterface extends RepositoryInterface
{
	public function getLiteratures();

	/**
	 * func only get literatures for homepage
	 * @return collect
	 */
	public function getLiteraturesHomepage();
}
