//
//  CRUDWordProtocol.h
//  MyDictionary
//
//  Created by Дмитрий Чумаков on 15.12.2020.
//

#import <Foundation/Foundation.h>
#import "AddWordProtocol.h"
#import "FetchWordProtocol.h"
#import "UpdateWordProtocol.h"
#import "DeleteWordProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@protocol CRUDWordProtocol <AddWordProtocol, FetchWordProtocol, UpdateWordProtocol, DeleteWordProtocol>

@end

NS_ASSUME_NONNULL_END
