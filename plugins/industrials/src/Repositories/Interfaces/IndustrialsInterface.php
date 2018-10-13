<?php

namespace Botble\Industrials\Repositories\Interfaces;

use Botble\Support\Repositories\Interfaces\RepositoryInterface;

interface IndustrialsInterface extends RepositoryInterface
{
	public function getIndustrials($limit, $except);
}
