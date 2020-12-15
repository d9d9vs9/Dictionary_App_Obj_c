//
//  AddWordProtocol.h
//  MyDictionary
//
//  Created by Дмитрий Чумаков on 15.12.2020.
//

#import <Foundation/Foundation.h>
#import "WordSaveCompletedBlock.h"

NS_ASSUME_NONNULL_BEGIN

@protocol AddWordProtocol 
- (void)addWord:(nullable WordSaveCompletedBlock)completedBlock;
@end

NS_ASSUME_NONNULL_END
