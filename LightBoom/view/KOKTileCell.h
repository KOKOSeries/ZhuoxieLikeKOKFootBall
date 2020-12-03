//
//  KOKTileCell.h
//  LightBoom
//
//  Created by JOY CHOW on 2020/12/3.
//

#import <UIKit/UIKit.h>
#import "KOKGameViewController.h"
#import "KOKTileView.h"
#import "KOKTileBurst.h"
NS_ASSUME_NONNULL_BEGIN

@interface KOKTileCell : UICollectionViewCell

@property (strong, nonatomic) KOKTileView *tileView;
@property (strong, nonatomic) KOKTileBurst *tileBurstView;

@property (nonatomic) BOOL on;
@property (nonatomic) BOOL solutionCell;
@property (nonatomic) NSInteger color;


-(void) updateWithHighlight:(BOOL)highlight color:(NSInteger)color andPartOfTheSolution:(BOOL)solutionCell;

@end

NS_ASSUME_NONNULL_END
