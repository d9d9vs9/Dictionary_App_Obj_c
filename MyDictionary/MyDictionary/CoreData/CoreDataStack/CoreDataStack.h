//
//  CoreDataStack.h
//  MyDictionary
//
//  Created by Дмитрий Чумаков on 15.12.2020.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

NS_ASSUME_NONNULL_BEGIN

@interface CoreDataStack : NSObject
@property (nonatomic, strong) NSPersistentContainer* storeContainer;
@property (nonatomic, strong) NSManagedObjectContext* mainContext;
@property (nonatomic, strong) NSManagedObjectContext* privateContext;
+ (NSManagedObjectModel *)model;
- (void)saveContext;
@end

NS_ASSUME_NONNULL_END
