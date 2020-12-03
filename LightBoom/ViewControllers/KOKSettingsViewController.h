//
//  KOKSettingsViewController.h
//  LightBoom
//
//  Created by JOY CHOW on 2020/12/3.
//

#import <UIKit/UIKit.h>
#import "KOKGame.h"
#import "KOKGameViewController.h"
#import "AppDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface KOKSettingsViewController : UIViewController<UIAlertViewDelegate>

@property AppDelegate *appDelegate;
@property (strong,nonatomic) KOKGame *model;

@property NSInteger newMatrixSize;
@property NSInteger fullMatrix;
@property float divider;
@property NSInteger newSequenceLength;
@property NSInteger newColorValue;
@property NSInteger difficulty;
@property NSString *warningString;
@property (strong, nonatomic) UIAlertController *GameAlert;


// Alert Delegate protocol methods

- (void)alertView:(UIAlertController *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex;



@end

NS_ASSUME_NONNULL_END
