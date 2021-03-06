<?php
namespace Deployer;
require 'recipe/symfony.php';

require_once(__DIR__ .'/readEnv.php');
$env = new \readEnv();
$env->convertEnv('.env_deploy');

set('application', $env->getEnv('DEPLOY_APPLICATION'));
set('default_timeout', $env->getEnv('DEPLOY_TIMEOUT') ?? 2000);
set('git_tty', true);
add('shared_files', []);
add('shared_dirs', []);
add('writable_dirs', []);

host($env->getEnv('DEPLOY_HOST'))
    ->user($env->getEnv('DEPLOY_USER'))
    ->port($env->getEnv('DEPLOY_PORT')) //68 : qa - 70 : dev
    ->identityFile($env->getEnv('DEPLOY_CERTIFICATE'))
    ->set('deploy_path', $env->getEnv('DEPLOY_PATH'))
    ->set('permission', $env->getEnv('DEPLOY_PERMISSION'))
    ->multiplexing(true);
    
task('deploy:dev', [
    'deploy:start',
    'deploy:upload',
//    'deploy:build',
    'deploy:permission',
]);

task('deploy:start', function(){ // 
    writeln('Start deployer');
});

task('deploy:upload', function(){ // 
    writeln('Start upload');
    $folders = [
       // 'app/Mail',
       // 'config',
       // 'bootstrap',
       'core/theme/src/',
       // 'database',
       // 'plugins/customers',
       'public/themes/ripple/',
       // 'resources',
       // 'routes',
       // 'storage',
       // 'public/uploads.zip',
    ];

    $files = [
      // 'public/themes/ripple/views/page/contact_us.blade.php',
      // 'public/themes/ripple/partials/footer.blade.php',
      // 'public/themes/ripple/assets/css/page/contactus/contactus.css'
    ];
    $path = get('deploy_path');
    
    foreach ($folders as $key => $folder) {
        # code...
        upload("{$folder}//", $path."//{$folder}");
    }

    foreach ($files as $key => $file) {
        # code...
        upload("{$file}", $path."//{$file}");
    }
});

task('deploy:build', function(){ // 
    writeln('Start build');
    try {
        $path = get('deploy_path');
        run("cd \"{$path}\" && COMPOSER_PROCESS_TIMEOUT=2000 composer install");
    } catch (\Symfony\Component\Process\Exception\ProcessFailedException $e) {
        writeln('Restore...');
    }
});

task('deploy:permission', function(){
    $permission = get('permission');
    $path = get('deploy_path');
    $folders = [
        // 'public/themes/ripple'
        // 'config',
        // 'bootstrap',
        // 'core',
        // 'database',
        'plugins',
        // 'public',
        // 'resources',
        // 'routes',
        // 'storage',
        // 'tests',
    ];

    foreach ($folders as $key => $folder) {
        # code...
        run('chown -R '.$permission.' '.$path. "/{$folder}");
    }
});

task('deploy:restore', function(){
  
});

after('deploy:failed', 'deploy:restore');