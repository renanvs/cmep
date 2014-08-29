//
//  MapViewController.m
//  CMEP
//
//  Created by renanvs on 8/29/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import "MapViewController.h"

@interface MapViewController ()

@end

@implementation MapViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)drawRect:(CGRect)rect
{
	CGContextRef ctx = UIGraphicsGetCurrentContext();
    
	// PDF might be transparent, assume white paper
	[[UIColor whiteColor] set];
	CGContextFillRect(ctx, rect);
    
	// Flip coordinates
	CGContextGetCTM(ctx);
	CGContextScaleCTM(ctx, 1, -1);
	CGContextTranslateCTM(ctx, 0, -rect.size.height);
    
	// url is a file URL
	CGPDFDocumentRef pdf = CGPDFDocumentCreateWithURL((CFURLRef)url);
	CGPDFPageRef page1 = CGPDFDocumentGetPage(pdf, 1);
    
	// get the rectangle of the cropped inside
	CGRect mediaRect = CGPDFPageGetBoxRect(page1, kCGPDFCropBox);
	CGContextScaleCTM(ctx, rect.size.width / mediaRect.size.width,
                      rect.size.height / mediaRect.size.height);
	CGContextTranslateCTM(ctx, -mediaRect.origin.x, -mediaRect.origin.y);
    
	// draw it
	CGContextDrawPDFPage(ctx, page1);
	CGPDFDocumentRelease(pdf);
}

@end
