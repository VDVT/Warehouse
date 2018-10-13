<?php

namespace Botble\Literature\Repositories\Interfaces;

use Botble\Support\Repositories\Interfaces\RepositoryInterface;

interface LiteratureInterface extends RepositoryInterface
{
	public function getLiteratures();
}
