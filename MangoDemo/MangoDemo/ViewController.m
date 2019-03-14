//
//  ViewController.m
//  mangoExample
//
//  Created by jerry.yong on 2017/10/31.
//  Copyright © 2017年 yongpengliang. All rights reserved.
//

#import "ViewController.h"
#import "TextObject.h"
static NSString * const cellIdentifier = @"cell";

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITextView *resultView;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSArray *titles;
@end

@implementation ViewController


+ (void)classMethodExapleWithInstance:(ViewController *)vc{
	vc.resultView.text = @"here is OC Class Method";
}

- (void)viewDidLoad {
	[super viewDidLoad];
	self.title = @"Mango示例";
	[self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellIdentifier];
}



#pragma mark - UITableViewDelegate,UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
	return self.titles.count;;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
	NSInteger row = indexPath.row;
	cell.textLabel.text = self.titles[row];
	return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
	[tableView deselectRowAtIndexPath:indexPath animated:YES];
	NSInteger row = indexPath.row;
	switch (row) {
		case 0://顺序语句示例
			[self sequentialStatementExample];
			break;
		case 1://if语句示例
			[self ifStatementExample];
			break;
		case 2://switch语句示例
			[self switchStatementExample];
			break;
		case 3://for语句示例
			[self forStatementExample];
			break;
		case 4://forEach语句示例
			[self forEachStatementExample];
			break;
		case 5://while语句示例
			[self whileStatementExample];
			break;
		case 6://do while语句示例
			[self doWhileStatementExample];
			break;
		case 7://block语句示例
			[self blockStatementExample];
			break;
        case 8://参数传递示例
        {
            
            int a = 1;
            [self paramPassingExampleWithBOOLArg:YES intArg:1 uintArg:2 structArg:CGRectMake(100, 200, 300, 400) blockArg:^id(NSString *str1, NSString *str2) {
                return [NSString stringWithFormat:@"%@-%@-%d",str1,str2,a];
            } objArg:@"string object"];
        }
			break;
		case 9:{//返回值示例
			NSString * (^retBlcok)(NSString *str1,NSString *str2) = [self returnBlockExample];
			NSString *result = retBlcok(@"hello ",@"jerry!");
			self.resultView.text = result;
			break;
		}
		case 10://创建自定义ViewController
			[self createAndOpenNewViewControllerExample];
			break;
		case 11://替换类方式示例
			[self.class classMethodExapleWithInstance:self];
			break;
		case 12://条件注解示例
			[self conditionsAnnotationExample];
			break;
		case 13://CGD示例
			[self gcdExample];
			break;
		default:
			break;
	}
    
//    NSLog(@"aaaa");
}

- (NSArray *)titles{
	if (_titles == nil) {
		_titles = @[@"顺序语句示例",@"if语句示例",@"switch语句示例",@"for语句示例",@"forEach语句示例",@"while语句示例",
					@"do while语句示例",@"block语句示例",@"参数传递示例",@"返回值示例",@"创建自定义ViewController",@"替换类方式示例",@"条件注解示例",@"GCD示例"];
	}
	return _titles;
}

- (void)sequentialStatementExample{
	
}

- (void)ifStatementExample{
	
}

- (void)switchStatementExample{
	
}

- (void)forStatementExample{
	
}

- (void)forEachStatementExample{
	
}

- (void)whileStatementExample{
	
}

- (void)doWhileStatementExample{
	
}

- (void)blockStatementExample{
	
}

- (void)paramPassingExampleWithBOOLArg:(BOOL)BOOLArg intArg:(NSInteger) intArg uintArg:(NSUInteger)uintArg structArg:(CGRect)structArg blockArg:(id (^)(NSString *str1, NSString *str2))blockArg objArg:(id)objArg {
	
}

- (void)passStackBlock:(void (^)(void))block{
}

- (NSString *(^)(NSString *,NSString *))returnBlockExample{
	return nil;
}

- (void)createAndOpenNewViewControllerExample{
	
}


- (void)conditionsAnnotationExample{
	self.resultView.text = @"here is OC method";
}


- (void)gcdExample{
//	dispatch_queue_t queue = dispatch_queue_create("com.plliang19.mango", DISPATCH_QUEUE_SERIAL);
//	dispatch_async(queue, ^{
//		NSLog(@"abc");
//	});
}



@end
