angular.module 'aptlyGui'
  .config ($stateProvider, $urlRouterProvider) ->
    'ngInject'
    $stateProvider
      .state 'home',
        url: '/'
        templateUrl: 'app/main/main.html'
        controller: 'MainController'
        controllerAs: 'main'
      .state 'repos',
        url: '/repos'
        templateUrl: 'app/repos/repos.list.html'
        controller: 'RepositoryController'
        controllerAs: 'repos'
      .state 'packages',
        url: '/packages'
        templateUrl: 'app/packages/package.list.html'
        controller: 'PackageController'
        controllerAs: 'packages'
      .state 'uploads',
        url: '/uploads'
        templateUrl: 'app/uploads/upload.list.html'
        controller: 'PackageController'
        controllerAs: 'uploads'

    $urlRouterProvider.otherwise '/'
