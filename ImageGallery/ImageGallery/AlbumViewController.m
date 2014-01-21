//
//  AlbumViewController.m
//  ImageGallery
//
//  Created by Krishantha Jayathilake on 1/21/14.
//  Copyright (c) 2014 Krishantha Jayathilake. All rights reserved.
//

#import "AlbumViewController.h"

@interface AlbumViewController ()

@property (nonatomic) UIBarButtonItem *addButon;

@end

@implementation AlbumViewController

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
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cellIdentifier"];
    [self.collectionView setBackgroundColor:[UIColor whiteColor]];
    
    self.addButon = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addButtonClicked)];
    self.navigationItem.leftBarButtonItem = self.addButon;
    self.navigationItem.rightBarButtonItem = self.editButtonItem;
    self.navigationItem.title = @"Albums";
    
}

- (void)addButtonClicked
{
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
