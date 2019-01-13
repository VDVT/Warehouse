<?php

namespace Botble\Literature\Repositories\Interfaces;

use Botble\Support\Repositories\Interfaces\RepositoryInterface;

interface LiteratureInterface extends RepositoryInterface
{
	/**
	 * Description
	 * @return collect
	 */
	public function getLiteratures();

	/**
	 * func only get literatures for homepage
	 * @return collect
	 */
	public function getLiteraturesHomepage();

	/**
	 * Get Literatures be ordered
	 * @author TrinhLe
	 * @return collects
	 */
	public function getLiteraturesOrder();

	/**
	 * Update order for Literatures
	 * @author TrinhLe
	 * @param array $literatures 
	 * @return mixed
	 */
	public function updateOrderLiteratures(array $orders);
}
