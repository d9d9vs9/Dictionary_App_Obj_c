//
//  WordListPresenter.h
//  MyDictionary
//
//  Created by Дмитрий Чумаков on 14.12.2020.
//

#import <Foundation/Foundation.h>
#import "WordListInteractor.h"
#import "WordListRouter.h"

NS_ASSUME_NONNULL_BEGIN

@interface WordListPresenter : NSObject
@property (nonatomic, nonnull) WordListInteractor *interactor;
@property (nonatomic, nonnull) WordListRouter *router;
- (instancetype)initWith:(WordListInteractor*)interactor router:(WordListRouter*)router;
@end

NS_ASSUME_NONNULL_END
