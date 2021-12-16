//
//  ImmersiveAdDelegate.h
//  ConsoliAd
//
//  Created by OsamaNadeem on 10/15/21.
//  Copyright © 2021 FazalElahi. All rights reserved.
//

#ifndef ImmersiveAdDelegate_h
#define ImmersiveAdDelegate_h

#import <UIKit/UIKit.h>

#endif /* ImmersiveAdDelegate_h */
@protocol ImmersiveAdDelegate <NSObject>

- (void)didLoadedImmersiveAd:(NSString*)scene;
- (void)didFailedToLoadImmersiveAd:(NSString*)scene error:(NSString *)error;
- (void)didCloseImmersiveAd:(NSString*)scene;
- (void)didClickImmersiveAd:(NSString*)scene productId:(NSString *)redirectionProductId;
- (void)didRefreshImmersiveAd:(NSString*)scene;
- (void)didDisplayImmersiveAd:(NSString*)scene;
- (void)didFailedToDisplayImmersiveAd:(NSString*)scene error:(NSString *)error;

@end
