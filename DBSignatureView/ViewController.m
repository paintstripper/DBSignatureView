//
//  ViewController.m
//  AFGSignatureView
//
//  Created by Daniel Beard on 8/08/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize signatureView;
@synthesize imageView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setSignatureView:nil];
    [self setImageView:nil];
    [self setSignatureView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return interfaceOrientation == UIInterfaceOrientationPortrait;
}

- (IBAction)captureImageFromSignatureView:(id)sender {
    
    self.imageView.image = [self.signatureView imageRepresentation];
}

- (IBAction)storeDrawingPaths:(id)sender {
    [self.signatureView savePointListToFile];
}

- (IBAction)clearSignatureView:(id)sender {
    [self.signatureView erase];
    self.imageView.image = nil;
}

- (IBAction)replayStoredPaths:(id)sender {
    [self.signatureView replayStoredPaths];
}
@end
