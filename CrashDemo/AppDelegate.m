//
//  AppDelegate.m
//  CrashDemo
//
//  Created by geeksprite on 2020/10/30.
//

#import "AppDelegate.h"
#import "OTIndexViewController.h"
#import "CountlyCrashReporter.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    UIWindow *window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
    
    OTIndexViewController *vc = [[OTIndexViewController alloc] init];
    UINavigationController *navc = [[UINavigationController alloc] initWithRootViewController:vc];
    
    window.rootViewController = navc;
    
    [window makeKeyAndVisible];
    
    self.window = window;
    
    
    [CountlyCrashReporter.sharedInstance startCrashReporting];
    
    return YES;
}



@end
