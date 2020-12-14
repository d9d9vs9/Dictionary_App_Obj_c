//
//  WordListModule.m
//  MyDictionary
//
//  Created by Дмитрий Чумаков on 14.12.2020.
//

#import "WordListModule.h"
#import "WordListViewController.h"
#import "WordListInteractor.h"
#import "WordListPresenter.h"
#import "WordListRouter.h"

@implementation WordListModule

+ (UIViewController *)module
{
    WordListInteractor *interactor = [[WordListInteractor alloc] init];
    WordListRouter *router = [[WordListRouter alloc] init];
    WordListPresenter *presenter = [[WordListPresenter alloc] initWith: interactor router: router];
    WordListViewController *viewController = [[WordListViewController alloc] initWithPresenter: presenter];
    return viewController;
}

@end
