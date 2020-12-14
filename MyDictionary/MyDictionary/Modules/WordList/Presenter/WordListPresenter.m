//
//  WordListPresenter.m
//  MyDictionary
//
//  Created by Дмитрий Чумаков on 14.12.2020.
//

#import "WordListPresenter.h"

@implementation WordListPresenter
- (instancetype)initWith:(WordListInteractor *)interactor router:(WordListRouter *)router {
    self = [super init];
    if(self) {
        NSLog(@"_init: %@", self);
        self.interactor = interactor;
        self.router = router;
    }
    return self;
}
@end
