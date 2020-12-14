//
//  WordListViewController.h
//  MyDictionary
//
//  Created by Дмитрий Чумаков on 14.12.2020.
//

#import <UIKit/UIKit.h>
#import "WordListPresenter.h"

NS_ASSUME_NONNULL_BEGIN

@interface WordListViewController : UIViewController
@property (nonatomic, nonnull) WordListPresenter *presenter;
- (instancetype)initWithPresenter:(WordListPresenter*)presenter;
@end

NS_ASSUME_NONNULL_END
