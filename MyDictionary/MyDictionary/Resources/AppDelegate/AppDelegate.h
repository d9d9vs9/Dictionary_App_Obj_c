//
//  AppDelegate.h
//  MyDictionary
//
//  Created by Дмитрий Чумаков on 14.12.2020.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

