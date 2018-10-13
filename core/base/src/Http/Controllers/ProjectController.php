<?php

namespace Botble\Base\Http\Controllers;

use Illuminate\Routing\Controller;
use SeoHelper;
use Theme;
use Botble\Projects\Repositories\Interfaces\ProjectsInterface;

class ProjectController extends Controller
{
    protected $projectRepository;
    public function __construct(ProjectsInterface $projectRepository)
    {
        $this->projectRepository = $projectRepository;
    }

	public function getList()
    {
        $projects = $this->projectRepository->getProjects(8);
        return Theme::scope('project.list', compact('projects'))->render();
    }

	public function details($slug, ProjectsInterface $projectRepository)
    {
        $project = $projectRepository->getBySlug($slug, true);
        if (empty($project)) abort(404);
        $seo = get_meta_data($project->id, 'seo_meta', PROJECTS_MODULE_SCREEN_NAME, true);
        if(!empty($seo))
            SeoHelper::setTitle($seo['seo_title'])->setDescription($seo['seo_description'])->setKeywords($seo['seo_keyword']);

        $other_projects = $this->projectRepository->getProjects(6, $project->id);

        return Theme::scope('project.details', compact('project', 'other_projects'))->render();
    }
}