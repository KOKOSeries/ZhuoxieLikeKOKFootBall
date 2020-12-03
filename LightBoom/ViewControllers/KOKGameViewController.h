//
//  KOKGameViewController.h
//  LightBoom
//
//  Created by JOY CHOW on 2020/12/3.
//

#import <UIKit/UIKit.h>
#import "KOKGame.h"
#import "KOKTileCell.h"
#import "KOKSettingsViewController.h"
#import "KOKStandardButton.h"
#import "KOKpersistence.h"
#import "AppDelegate.h"
#import "KOKpanelView.h"
#import "KOKcontainerView.h"

NS_ASSUME_NONNULL_BEGIN

@interface KOKGameViewController : UIViewController<UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UIAlertViewDelegate, UIGestureRecognizerDelegate>
@property AppDelegate *appDelegate;

//@property (weak, nonatomic) IBOutlet UICollectionView *tileCollectionView;
@property (strong, nonatomic) UICollectionView *tileCollectionView;
@property (strong, nonatomic) UICollectionViewFlowLayout *myLayout;

@property (strong,nonatomic) KOKGame *model;

@property (strong, nonatomic) IBOutlet UIView *chromePiece;

@property UILabel *touchesLabel;
@property UILabel *tilesLabel;
@property UILabel *scoreLabel;

// these will be the interface colors (which start out as a set of gray values)
@property UIColor *color0, *color1, *color2, *color3, *color4, *color5, *color6,
                  *color7, *color8, *color9, *color10;
@property UIColor *myColor;


// Button Handles
// The icon buttons are stored in containerViews which include both the button and the label.
@property KOKcontainerView *restartButtonView;
@property KOKcontainerView *solutionButtonView;
@property KOKcontainerView *settingsButtonView;
@property KOKcontainerView *newgameButtonView;


// Alert Handles
@property (strong, nonatomic) UIAlertController *GameAlert;

// Handle to the Gesture Recognizers
@property (strong, nonatomic) IBOutlet UISwipeGestureRecognizer *swipeGR;
@property (strong, nonatomic) UITapGestureRecognizer *tapGR;

// The target actions for these methods are assigned
// programatically when I create the buttons.

-(void) refreshDisplay;
-(void) newGame;
-(void) restart;
-(void) home;
-(void) createNewGame;
-(void) showInfo;

// Alert Delegate protocol methods
- (void)alertView:(UIAlertController *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex;

-(void)tileHit:(UITapGestureRecognizer *)sender;

- (IBAction)swipeMe:(id)sender;
- (IBAction)rotateMe:(UIRotationGestureRecognizer *)sender;

-(void) rotateBoardLeft;
-(void) rotateBoardRight;
@end

NS_ASSUME_NONNULL_END
