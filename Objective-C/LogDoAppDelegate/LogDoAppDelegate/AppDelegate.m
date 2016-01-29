//
//  AppDelegate.m
//  LogDoAppDelegate
//
//  Created by Macbook Retina on 16/01/16.
//  Copyright © 2016 Macbook Retina. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    NSLog(@"Carregando o aplicativo - didFinishLaunchingWithOptions");

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {

    NSLog(@"Congelando o aplicativo - applicationWillResignActive");
}

- (void)applicationDidEnterBackground:(UIApplication *)application {

    NSLog(@"Quando o aplicativo é mandado para o background - applicationDidEnterBackground");
    
}

- (void)applicationWillEnterForeground:(UIApplication *)application {

    NSLog(@"Quando o aplicativo retorna para o primeiro plano - applicationWillEnterForeground");
}

- (void)applicationDidBecomeActive:(UIApplication *)application {

    NSLog(@"Quando o aplicativo retorna para primeiro plano e carrega dados - applicationDidBecomeActive");
}

- (void)applicationWillTerminate:(UIApplication *)application {

    NSLog(@"Jogou o aplicativo para cima - applicationWillTerminate");
}

@end
