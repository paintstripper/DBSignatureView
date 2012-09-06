//
//  ViewController.h
//  AFGSignatureView
//
//  Created by Daniel Beard on 8/08/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DBSignatureView.h"

@interface ViewController : UIViewController

- (IBAction)captureImageFromSignatureView:(id)sender;
- (IBAction)storeDrawingPaths:(id)sender;
- (IBAction)clearSignatureView:(id)sender;
- (IBAction)replayStoredPaths:(id)sender;

@property (strong, nonatomic) IBOutlet DBSignatureView *signatureView;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;

@end
