//
//  WordCoreDataService.h
//  MyDictionary
//
//  Created by Дмитрий Чумаков on 15.12.2020.
//

#import <Foundation/Foundation.h>
#import "CRUDWordProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@protocol WordCoreDataServiceProtocol <CRUDWordProtocol>

@end

@interface WordCoreDataService : NSObject <WordCoreDataServiceProtocol>

@end

NS_ASSUME_NONNULL_END
