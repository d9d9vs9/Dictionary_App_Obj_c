//
//  CoreDataStack.m
//  MyDictionary
//
//  Created by Дмитрий Чумаков on 15.12.2020.
//

#import "CoreDataStack.h"
#import "Constants.h"
#import "ResultSaveCompletedBlock.h"

@implementation CoreDataStack

@synthesize storeContainer = _storeContainer;
@synthesize mainContext = _mainContext;
@synthesize privateContext = _privateContext;

+ (NSManagedObjectModel *)model {
    NSURL *url = [[NSBundle mainBundle] URLForResource: [Constants AppName]
                                         withExtension: [Constants MomdExtension]];
    return [[NSManagedObjectModel alloc]
            initWithContentsOfURL: url];
}

- (NSManagedObjectContext *)mainContext {
    if (!_mainContext) {
        _mainContext = [_storeContainer viewContext];
    }
    return _mainContext;
}

- (NSManagedObjectContext *)privateContext {
    NSManagedObjectContext *context = [[NSManagedObjectContext alloc]
                                       initWithConcurrencyType: NSPrivateQueueConcurrencyType];
    context.parentContext = _mainContext;
    if (!_privateContext) {
        _privateContext = context;
    }
    return _privateContext;
}

- (NSPersistentContainer *)storeContainer {
    NSPersistentContainer *container = [[NSPersistentContainer alloc]
                                        initWithName: [Constants AppName]
                                        managedObjectModel: [CoreDataStack model]];
    [container loadPersistentStoresWithCompletionHandler:^(NSPersistentStoreDescription *description,
                                                           NSError *error) {
        if (error != nil) {
            NSLog(@"Unresolved error %@, %@", error, error.userInfo);
            abort();
        }
    }];
    
    if (!_storeContainer) {
        _storeContainer = container;
    }
    
    return _storeContainer;
}

- (void)saveContext {
    NSManagedObjectContext *context = self.storeContainer.viewContext;
    NSError *error = nil;
    if ([context hasChanges] && ![context save:&error]) {
        NSLog(@"Unresolved error %@, %@", error, error.userInfo);
        abort();
    }
}


- (void)savePerformAndWait:(nullable ResultSaveCompletedBlock)completedBlock {
    
}

- (void)savePerform:(nullable ResultSaveCompletedBlock)completedBlock {
    
}

- (void)savePerformAndWaitContext:(NSManagedObjectContext *)context
                   completedBlock:(nullable ResultSaveCompletedBlock)completedBlock {
    [context performBlockAndWait:^{
        NSError *error = nil;
        if ([context hasChanges] && ![context save: &error]) {
            NSLog(@"Unresolved error %@, %@", error, error.userInfo);
            completedBlock(Failure, error);
        } else {
            completedBlock(Success, error);
        }
    }];
}

- (void)savePerformContext:(NSManagedObjectContext *)context
            completedBlock:(nullable ResultSaveCompletedBlock)completedBlock {
    [context performBlock:^{
        NSError *error = nil;
        if ([context hasChanges] && ![context save: &error]) {
            NSLog(@"Unresolved error %@, %@", error, error.userInfo);
            completedBlock(Failure, error);
        } else {
            completedBlock(Success, error);
        }
    }];
}

@end
