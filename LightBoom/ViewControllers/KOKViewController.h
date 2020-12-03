//
//  KOKViewController.h
//  LightBoom
//
//  Created by JOY CHOW on 2020/12/3.
//

#import <UIKit/UIKit.h>
#import "KOKStandardButton.h"
#import "KOKTileView.h"
#import "KOKJewel.h"
NS_ASSUME_NONNULL_BEGIN

@interface KOKViewController : UIViewController
@property KOKTileView *tile1;
@property KOKTileView *tile2;
@property KOKTileView *tile3;
@property KOKTileView *tile4;
@property KOKTileView *tile5;

@property KOKStandardButton *play;

@property KOKJewel *jewel;
@end

NS_ASSUME_NONNULL_END
