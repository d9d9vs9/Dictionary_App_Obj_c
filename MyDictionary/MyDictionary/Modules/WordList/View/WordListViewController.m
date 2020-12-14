//
//  WordListViewController.m
//  MyDictionary
//
//  Created by Дмитрий Чумаков on 14.12.2020.
//

#import "WordListViewController.h"

@interface WordListViewController ()

@end

@implementation WordListViewController

- (instancetype)initWithPresenter:(WordListPresenter *)presenter {
    self = [super init];
    if(self) {
        NSLog(@"_init: %@", self);
        self.presenter = presenter;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Words";
}

@end
