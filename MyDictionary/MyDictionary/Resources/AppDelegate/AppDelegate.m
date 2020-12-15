//
//  AppDelegate.m
//  MyDictionary
//
//  Created by Дмитрий Чумаков on 14.12.2020.
//

#import "AppDelegate.h"
#import "WordListModule.h"
#import "WordListViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame: [UIScreen mainScreen].bounds];
    WordListViewController *wordListViewController = (WordListViewController *) [WordListModule module];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController: wordListViewController];
    self.window.rootViewController = navigationController;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
