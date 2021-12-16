//
//  ImmersiveAdBase.h
//  ConsoliAd
//
//  Created by OsamaNadeem on 10/15/21.
//  Copyright © 2021 FazalElahi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "ImmersiveAdDelegate.h"
#import "ConsoliAdsImmersiveAdSizes.h"

NS_ASSUME_NONNULL_BEGIN

@interface ImmersiveAdBase : NSObject

@property (nonatomic, weak) id<ImmersiveAdDelegate> immersiveAdDelegate;

- (void)loadImmersiveAd;

- (NSString*)getMainImageVideoPath;

- (NSString*)getMainImageVideoPathForRefresh;

- (void)trackAdImpression;

- (void)trackRefreshAdImpression;

- (void)trackAdClicked;

- (void)openPrivacyPolicy;

- (void)destroyImmersiveAd;

- (UIImage*)getImmersiveAdChoiceImage;

- (BOOL) isCampaignImage;

@end

NS_ASSUME_NONNULL_END
