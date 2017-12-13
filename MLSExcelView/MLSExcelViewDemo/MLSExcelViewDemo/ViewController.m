//
//  ViewController.m
//  MLSExcelViewDemo
//
//  Created by MinLison on 2017/12/13.
//  Copyright © 2017年 minlison. All rights reserved.
//

#import "ViewController.h"
#import "MLSExcelViewHeader.h"
@interface ViewController () <MLSExcelViewViewDataSource,MLSExcelViewViewDelegate>
@property(nonatomic, strong) MLSExcelViewView *excelView;
@end

@implementation ViewController

- (void)viewDidLoad
{
        [super viewDidLoad];
        self.excelView = [[MLSExcelViewView alloc] init];
        self.excelView.delegate = self;
        self.excelView.dataSource = self;
        self.excelView.isFreezeFirstRow = YES;
        self.excelView.columnsToFreeze = 1;
        self.excelView.allowsMultipleSelection = YES;
        [self.view addSubview:self.excelView];
        
        [self.excelView reloadData];
}
- (void)viewDidLayoutSubviews
{
        [super viewDidLayoutSubviews];
        self.excelView.frame = CGRectMake(0, 50, self.view.bounds.size.width, 300);
}
- (NSInteger)numberOfRowsInNumbersView:(MLSExcelViewView *)numbersView
{
        return 15;
}
- (NSInteger)numberOfColumnsInNumbersView:(MLSExcelViewView *)numbersView
{
        return 15;
}
- (__kindof NSAttributedString * _Nullable)numbersView:(MLSExcelViewView *)numbersView attributedStringForItemAtIndexPath:(MLSIndexPath *)indexPath
{
        return [[NSAttributedString alloc] initWithString:@"啦啦啦" attributes: nil];
}
- (CGFloat)numbersView:(MLSExcelViewView *)numbersView heightForRow:(NSInteger)row
{
        return 50;
}
- (CGFloat)numbersView:(MLSExcelViewView *)numbersView widthForColumn:(NSInteger)column
{
        return 100;
}
- (void)numbersView:(MLSExcelViewView *)numbersView didSelectItemAtIndexPath:(MLSIndexPath *)indexPath
{
        NSLog(@"selected -- %@",numbersView.indexPathsForSelectedItems);
}
- (void)numbersView:(MLSExcelViewView *)numbersView didDeselectItemAtIndexPath:(MLSIndexPath *)indexPath
{
        NSLog(@"deselected -- %@",indexPath);
}
@end
