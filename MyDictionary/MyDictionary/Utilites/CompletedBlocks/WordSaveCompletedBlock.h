//
//  WordSaveCompletedBlock.h
//  MyDictionary
//
//  Created by Дмитрий Чумаков on 15.12.2020.
//

#import "Result.h"
#import "WordModel.h"

typedef void (^WordSaveCompletedBlock) (Result result, struct WordModel wordModel, NSError * _Nullable error);
