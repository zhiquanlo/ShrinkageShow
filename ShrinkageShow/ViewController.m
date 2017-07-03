//
//  ViewController.m
//  ShrinkageShow
//
//  Created by 李志权 on 16/6/6.
//  Copyright © 2016年 李志权. All rights reserved.
//

#import "ViewController.h"
#import "CollectionReusableView.h"
#import "CollectionViewCell.h"
#define fDeviceWidth ([UIScreen mainScreen].bounds.size.width)
#define fDeviceHeight ([UIScreen mainScreen].bounds.size.height)
@interface ViewController ()<UICollectionViewDataSource,UICollectionViewDelegate>{
    NSMutableArray *_cellArray;     //collectionView数据
    NSMutableDictionary *_showDic;
}

@property (nonatomic, strong) UICollectionView *collectionView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /**
     *  创建collectionView self自动调用setter getter方法
     */
    [self.view addSubview:self.collectionView];
    
    
    /**
     *  加载的数据
     */
    _cellArray = [NSMutableArray array];
    for (int a = 1; a<100; a++) {
        NSDictionary *dic = @{@"rowArray":@[@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"},@{@"communication":@"沟通",@"product1":@"产品知识",@"product2":@"产品知识"}],@"sectionName":[NSString stringWithFormat:@"D%d名称名字",a]};
        [_cellArray addObject:dic];
    }
   
    // Do any additional setup after loading the view, typically from a nib.
}
#pragma mark - 创建collectionView并设置代理
- (UICollectionView *)collectionView
{
    if (_collectionView == nil) {
        
        UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
        
        flowLayout.headerReferenceSize = CGSizeMake(fDeviceWidth, 40);//头部大小
        
        _collectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 0, fDeviceWidth, fDeviceHeight) collectionViewLayout:flowLayout];
            flowLayout.minimumLineSpacing = 0.5;//行间距(最小值)
            flowLayout.minimumInteritemSpacing = 0.5;//item间距(最小值)
            flowLayout.itemSize = CGSizeMake((fDeviceWidth-1)/3, 50);//item的大小
//            flowLayout.sectionInset = UIEdgeInsetsMake(10, 10, 10, 10);//设置section的边距
        //    flowLayout.headerReferenceSize = CGSizeMake(320, 20);
        //    flowLayout.footerReferenceSize = CGSizeMake(320, 20);
        
        //注册cell和ReusableView（相当于头部）
        [_collectionView registerClass:[CollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
        [_collectionView registerClass:[CollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"ReusableView"];
        
        //设置代理
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
        
        //背景颜色
        _collectionView.backgroundColor = [UIColor grayColor];
        //自适应大小
        _collectionView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        
    }
    return _collectionView;
}
#pragma mark - UICollectionView delegate dataSource
#pragma mark 定义展示的Section的个数
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    if (_cellArray && _cellArray.count) {
        return _cellArray.count;
    }
    return 0;
}
#pragma mark 定义展示的UICollectionViewCell的个数
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    if (_cellArray && _cellArray.count) {
        
        if ([_showDic objectForKey:[NSString stringWithFormat:@"%ld",(long)section]]){
            NSDictionary *dicData = [_cellArray objectAtIndex:section];
            NSArray *rowArray  = dicData[@"rowArray"];
            if (rowArray && rowArray.count) {
                return rowArray.count;
            }

        }else{
           return 0;
        }
        
    }
    return 0;
}
//定义每个Item 的大小
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake((fDeviceWidth-1)/3, 50);
}

#pragma mark 每个UICollectionView展示的内容
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identify = @"cell";
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identify forIndexPath:indexPath];
    [cell sizeToFit];
        NSDictionary *dicData = [_cellArray objectAtIndex:indexPath.section];
        NSArray *rowArray  = dicData[@"rowArray"];
        NSDictionary *dic = rowArray[indexPath.row];
        cell.text.text = dic[@"communication"];

    return cell;
}

#pragma mark 头部显示的内容
- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    
    CollectionReusableView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:
                                            UICollectionElementKindSectionHeader withReuseIdentifier:@"ReusableView" forIndexPath:indexPath];
  
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(headViewTapGesture:)];
    [headerView addGestureRecognizer:tapGesture];
    headerView.tag = 600+indexPath.section;
    NSDictionary *dicData = _cellArray[indexPath.section];
    headerView.headView.titleLabel.text  = dicData[@"sectionName"];

    NSString *key = [NSString stringWithFormat:@"%ld",(long)indexPath.section];
    if (![_showDic objectForKey:key]) {
        //收缩，箭头向下
        headerView.headView.arrowImage.backgroundColor = [UIColor purpleColor];
    }
    else
    {
        //收缩，箭头向上
        headerView.headView.arrowImage.backgroundColor = [UIColor greenColor];
    }
    return headerView;
}

#pragma mark UICollectionView被选中时调用的方法
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"选择%ld",(long)indexPath.item);
}
- (void)headViewTapGesture:(UITapGestureRecognizer *)tapGesture
{
    NSInteger didSection = tapGesture.view.tag;
    CollectionReusableView *headerView =(CollectionReusableView *)tapGesture.view;
    if (!_showDic) {
        _showDic = [[NSMutableDictionary alloc]init];
    }
    
    NSString *key = [NSString stringWithFormat:@"%ld",(long)didSection-600];
    if (![_showDic objectForKey:key]) {
        [_showDic setObject:@"1" forKey:key];
        //展示，箭头向下
        headerView.headView.arrowImage.backgroundColor = [UIColor greenColor];
    }else{
        [_showDic removeObjectForKey:key];
        //收缩，箭头向上
        headerView.headView.arrowImage.backgroundColor = [UIColor purpleColor];
    }
    [_collectionView reloadSections:[NSIndexSet indexSetWithIndex:didSection-600]];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
