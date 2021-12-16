//
//  CAAppDelegate.m
//  TestSDKStaticLib
//
//  Created by FazalConsoliads on 12/16/2021.
//  Copyright (c) 2021 FazalConsoliads. All rights reserved.
//

#import "CAAppDelegate.h"
#import "ConsoliAdIOSPlugin.h"
#import "ConsoliSDKAdsDelegate.h"

@interface CAAppDelegate () <ConsoliSDKAdsDelegate>

@end

@implementation CAAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [[ConsoliAdIOSPlugin sharedPlugIn] initWithKey:@"9ac9826ee49fdb8ff469ade1bb6d6487" andDelegate:self userConsent:YES devMode:YES];
    // Override point for customization after application launch.
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (void)didClickInterstitial:(NSString *)sceneId productId:(NSString *)redirectionProductId {
    ;
}

- (void)didClickNative:(NSString *)sceneId productId:(NSString *)redirectionProductId {
    ;
}

- (void)didCloseInterstitial:(NSString *)sceneId {
    ;
}

- (void)didCloseNative:(NSString *)sceneId {
    ;
}

- (void)didDisplayInterstitial:(NSString *)sceneId {
    ;
}

- (void)didDisplayNative:(NSString *)sceneId {
    ;
}

- (void)didFailToLoadRewardedVideo:(NSString *)sceneId error:(NSString *)error {
    ;
}

- (void)didFailToShowRewardedVideo:(NSString *)sceneId error:(NSString *)error {
    ;
}

- (void)didFailedToLoadInterstitialAd:(NSString *)sceneId error:(NSString *)error {
    ;
}

- (void)didFailedToLoadNativeAd:(NSString *)sceneId error:(NSString *)error {
    ;
}

- (void)didInterstitialLoadSuccess:(NSString *)sceneId {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(10 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [[ConsoliAdIOSPlugin sharedPlugIn] showInterstitial:@"27" withRootViewController:self.window.rootViewController];
    });
}

- (void)didLoadNativeAdds:(NativeAdBase *)nativeAd scene:(NSString *)scene {
    ;
}

- (void)onAdError:(NSString *)error {
    ;
}

- (void)onStaticInterstitialLoadSuccess:(NSString *)sceneId {
    ;
}

- (void)rewardedVideoAdClicked:(NSString *)sceneId productId:(NSString *)redirectionProductId {
    ;
}

- (void)rewardedVideoAdClosed:(NSString *)sceneId {
    ;
}

- (void)rewardedVideoAdCompleted:(NSString *)sceneId withReward:(int)reward {
    ;
}

- (void)rewardedVideoAdDidDisplay:(NSString *)sceneId {
    ;
}

- (void)rewardedVideoAdLoaded:(NSString *)sceneId {
    ;
}

- (void)sdkDidInitialized:(BOOL)status {
    [[ConsoliAdIOSPlugin sharedPlugIn] loadInterstitialForScene:@"27"];
}

- (void)staticInterstitialAdClicked:(NSString *)sceneId productId:(NSString *)redirectionProductId {
    ;
}

- (void)staticInterstitialAdClosed:(NSString *)sceneId {
    ;
}

- (void)staticInterstitialAdFailed:(NSString *)sceneId error:(NSString *)error {
    ;
}

- (void)staticInterstitialAdShown:(NSString *)sceneId {
    ;
}

@end
