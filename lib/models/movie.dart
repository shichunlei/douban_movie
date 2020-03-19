import 'casts.dart';
import 'clips.dart';
import 'image.dart';
import 'news.dart';
import 'photos.dart';
import 'rating.dart';
import 'reviews.dart';
import 'tag.dart';
import 'videos.dart';

export 'cover.dart';

/// banners : [{"cover":"https://img1.doubanio.com/view/movie_gallery_frame_hot_rec/normal/public/b4b3467a4a0df7c.jpg","link":"https://www.douban.com/note/735952605/?from=gallery","title":"秋日特惠！大师课八个课程4折起","summary":"10月1日~10月15日活动期间，豆瓣影人PRO大师课八门课程4折起，购买课程限量赠送「大师课学习手账」一本！"},{"cover":"https://img3.doubanio.com/view/movie_gallery_frame_hot_rec/normal/public/6a12b199b1ad0c3.jpg","link":"https://movie.douban.com/trailer/253939/?from=gallery","title":"高分动画《盗梦特攻队》定档11月15日","summary":"豆瓣8.4分动画电影《盗梦特攻队》11月15日全国上映！"},{"cover":"https://img3.doubanio.com/view/movie_gallery_frame_hot_rec/normal/public/7a517172a94b7d0.jpg","link":"https://movie.douban.com/trailer/253732/?from=gallery","title":"《瑞克和莫蒂》第四季11月10回归","summary":"快乐11月！"},{"cover":"https://img1.doubanio.com/view/movie_gallery_frame_hot_rec/normal/public/d36db4f25dcbe8b.jpg","link":"https://movie.douban.com/trailer/253234/?from=gallery","title":"《绝命毒师》电影版正式预告","summary":"“小粉”亚伦·保尔、“瘦皮猴”查尔斯·贝克、Badger马特·琼斯等超过十位剧版卡司回归！10月11日Netflix上线！"},{"cover":"https://img1.doubanio.com/view/movie_gallery_frame_hot_rec/normal/public/2cb68465216f54b.jpg","link":"https://movie.douban.com/trailer/253730/?from=gallery","title":"网飞首部华语原创剧集《罪梦者》预告","summary":"张孝全、贾静雯、范晓萱、王柏杰、刘子千主演Netflix首部华语原创剧集！《十七岁的天空》导演陈映蓉执导，10月31日Netflix全集上线！"},{"cover":"https://img3.doubanio.com/view/movie_gallery_frame_hot_rec/normal/public/b0545a25fc71c8d.jpg","link":"https://movie.douban.com/trailer/253172/?from=gallery","title":"昆汀新片《好莱坞往事》定档10月25日","summary":"昆汀·塔伦蒂诺第九部电影长片！小李x布拉德·皮特两大男神主演！"}]
/// in_theaters : [{"rating":{"max":10,"average":8.0,"stars":"40","min":0},"title":"我和我的祖国","collect_count":381666,"mainland_pubdate":"2019-09-30","has_video":false,"original_title":"我和我的祖国","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2567998580.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2567998580.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2567998580.jpg"},"id":"32659890"},{"rating":{"max":10,"average":7.0,"stars":"35","min":0},"title":"中国机长","collect_count":252233,"mainland_pubdate":"2019-09-30","has_video":false,"original_title":"中国机长","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2568261402.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2568261402.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2568261402.jpg"},"id":"30295905"},{"rating":{"max":10,"average":0,"stars":"00","min":0},"title":"犯罪现场","collect_count":103,"mainland_pubdate":"2019-10-12","has_video":false,"original_title":"犯罪現場","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2570879785.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2570879785.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2570879785.jpg"},"id":"26235346"},{"rating":{"max":10,"average":6.2,"stars":"30","min":0},"title":"急速逃脱","collect_count":427,"mainland_pubdate":"2019-10-12","has_video":false,"original_title":"Steig. Nicht. Aus!","subtype":"movie","year":"2018","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2568928751.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2568928751.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2568928751.jpg"},"id":"27098016"},{"rating":{"max":10,"average":6.6,"stars":"35","min":0},"title":"攀登者","collect_count":131913,"mainland_pubdate":"2019-09-30","has_video":false,"original_title":"攀登者","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2568577681.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2568577681.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2568577681.jpg"},"id":"30413052"},{"rating":{"max":10,"average":0,"stars":"00","min":0},"title":"双子杀手","collect_count":2421,"mainland_pubdate":"2019-10-18","has_video":false,"original_title":"Gemini Man","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2570906505.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2570906505.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2570906505.jpg"},"id":"3097572"}]
/// soon_movies : [{"rating":{"max":10,"average":0,"stars":"00","min":0},"title":"犯罪现场","collect_count":103,"mainland_pubdate":"2019-10-12","has_video":false,"original_title":"犯罪現場","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2570879785.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2570879785.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2570879785.jpg"},"id":"26235346"},{"rating":{"max":10,"average":6.2,"stars":"30","min":0},"title":"急速逃脱","collect_count":427,"mainland_pubdate":"2019-10-12","has_video":false,"original_title":"Steig. Nicht. Aus!","subtype":"movie","year":"2018","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2568928751.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2568928751.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2568928751.jpg"},"id":"27098016"},{"rating":{"max":10,"average":5.1,"stars":"25","min":0},"title":"丑娃娃","collect_count":853,"mainland_pubdate":"2019-10-13","has_video":false,"original_title":"UglyDolls","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2570312295.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2570312295.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2570312295.jpg"},"id":"23774847"},{"rating":{"max":10,"average":0,"stars":"00","min":0},"title":"打过长江去","collect_count":3,"mainland_pubdate":"2019-10-16","has_video":false,"original_title":"打过长江去","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2546307854.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2546307854.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2546307854.jpg"},"id":"30345265"},{"rating":{"max":10,"average":0,"stars":"00","min":0},"title":"双子杀手","collect_count":2421,"mainland_pubdate":"2019-10-18","has_video":false,"original_title":"Gemini Man","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2570906505.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2570906505.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2570906505.jpg"},"id":"3097572"},{"rating":{"max":10,"average":0,"stars":"00","min":0},"title":"沉睡魔咒2","collect_count":98,"mainland_pubdate":"2019-10-18","has_video":false,"original_title":"Maleficent: Mistress of Evil","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2570105165.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2570105165.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2570105165.jpg"},"id":"26426056"}]
/// top250 : {"tip":"豆瓣榜单~共250部","title":"豆瓣电影Top250","subjects":[{"rating":{"max":10,"average":9.7,"stars":"50","min":0},"title":"肖申克的救赎","collect_count":2210938,"mainland_pubdate":"","has_video":true,"original_title":"The Shawshank Redemption","subtype":"movie","year":"1994","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p480747492.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p480747492.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p480747492.jpg"},"id":"1292052"},{"rating":{"max":10,"average":9.6,"stars":"50","min":0},"title":"霸王别姬","collect_count":1766003,"mainland_pubdate":"","has_video":true,"original_title":"霸王别姬","subtype":"movie","year":"1993","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2561716440.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2561716440.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2561716440.jpg"},"id":"1291546"},{"rating":{"max":10,"average":9.5,"stars":"50","min":0},"title":"阿甘正传","collect_count":1921116,"mainland_pubdate":"","has_video":true,"original_title":"Forrest Gump","subtype":"movie","year":"1994","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2559011361.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2559011361.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2559011361.jpg"},"id":"1292720"},{"rating":{"max":10,"average":9.4,"stars":"50","min":0},"title":"这个杀手不太冷","collect_count":2236370,"mainland_pubdate":"","has_video":true,"original_title":"Léon","subtype":"movie","year":"1994","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p511118051.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p511118051.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p511118051.jpg"},"id":"1295644"},{"rating":{"max":10,"average":9.5,"stars":"50","min":0},"title":"美丽人生","collect_count":1005852,"mainland_pubdate":"","has_video":true,"original_title":"La vita è bella","subtype":"movie","year":"1997","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p510861873.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p510861873.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p510861873.jpg"},"id":"1292063"},{"rating":{"max":10,"average":9.4,"stars":"50","min":0},"title":"泰坦尼克号","collect_count":1831001,"mainland_pubdate":"1998-04-03","has_video":true,"original_title":"Titanic","subtype":"movie","year":"1997","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p457760035.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p457760035.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p457760035.jpg"},"id":"1292722"},{"rating":{"max":10,"average":9.3,"stars":"50","min":0},"title":"千与千寻","collect_count":1832111,"mainland_pubdate":"2019-06-21","has_video":false,"original_title":"千と千尋の神隠し","subtype":"movie","year":"2001","images":{"small":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2557573348.jpg","large":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2557573348.jpg","medium":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2557573348.jpg"},"id":"1291561"},{"rating":{"max":10,"average":9.5,"stars":"50","min":0},"title":"辛德勒的名单","collect_count":934113,"mainland_pubdate":"","has_video":true,"original_title":"Schindler's List","subtype":"movie","year":"1993","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p492406163.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p492406163.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p492406163.jpg"},"id":"1295124"},{"rating":{"max":10,"average":9.3,"stars":"50","min":0},"title":"盗梦空间","collect_count":1870387,"mainland_pubdate":"2010-09-01","has_video":true,"original_title":"Inception","subtype":"movie","year":"2010","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p513344864.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p513344864.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p513344864.jpg"},"id":"3541415"},{"rating":{"max":10,"average":9.3,"stars":"50","min":0},"title":"忠犬八公的故事","collect_count":1394126,"mainland_pubdate":"","has_video":true,"original_title":"Hachi: A Dog's Tale","subtype":"movie","year":"2009","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p524964016.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p524964016.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p524964016.jpg"},"id":"3011091"}]}
/// uses : {"tip":"每周五更新~共11部","title":"豆瓣电影北美票房榜","subjects":[{"rating":{"max":10,"average":9.2,"stars":"50","min":0},"title":"小丑","collect_count":30470,"mainland_pubdate":"","has_video":false,"original_title":"Joker","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2567198874.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2567198874.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2567198874.jpg"},"id":"27119724"},{"rating":{"max":10,"average":7.5,"stars":"40","min":0},"title":"雪人奇缘","collect_count":9783,"mainland_pubdate":"2019-10-01","has_video":false,"original_title":"Abominable","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2567925521.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2567925521.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2567925521.jpg"},"id":"26929010"},{"rating":{"max":10,"average":9.2,"stars":"50","min":0},"title":"唐顿庄园：2011圣诞特别篇","collect_count":46240,"mainland_pubdate":"","has_video":false,"original_title":"Downton Abbey: Christmas at Downton Abbey","subtype":"movie","year":"2011","images":{"small":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1711501188.jpg","large":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1711501188.jpg","medium":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1711501188.jpg"},"id":"6870362"},{"rating":{"max":10,"average":6.9,"stars":"35","min":0},"title":"舞女大盗","collect_count":993,"mainland_pubdate":"","has_video":false,"original_title":"Hustlers","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2565479931.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2565479931.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2565479931.jpg"},"id":"30294313"},{"rating":{"max":10,"average":6.6,"stars":"35","min":0},"title":"小丑回魂2","collect_count":6351,"mainland_pubdate":"","has_video":false,"original_title":"It: Chapter Two","subtype":"movie","year":"2019","images":{"small":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2562859558.jpg","large":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2562859558.jpg","medium":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2562859558.jpg"},"id":"27133569"},{"rating":{"max":10,"average":6.8,"stars":"35","min":0},"title":"星际探索","collect_count":3529,"mainland_pubdate":"","has_video":false,"original_title":"Ad Astra","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2569545416.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2569545416.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2569545416.jpg"},"id":"24716039"},{"rating":{"max":10,"average":7.6,"stars":"40","min":0},"title":"朱迪","collect_count":172,"mainland_pubdate":"","has_video":false,"original_title":"Judy","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2561885281.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2561885281.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2561885281.jpg"},"id":"27179039"},{"rating":{"max":10,"average":7.6,"stars":"40","min":0},"title":"第一滴血5：最后的血","collect_count":5249,"mainland_pubdate":"","has_video":false,"original_title":"Rambo: Last Blood","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2564519086.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2564519086.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2564519086.jpg"},"id":"10546436"},{"rating":{"max":10,"average":0,"stars":"00","min":0},"title":"宝莱坞双雄之战","collect_count":70,"mainland_pubdate":"","has_video":false,"original_title":"War","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2569921195.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2569921195.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2569921195.jpg"},"id":"34607890"},{"rating":{"max":10,"average":7.5,"stars":"40","min":0},"title":"好小子们","collect_count":1070,"mainland_pubdate":"","has_video":false,"original_title":"Good Boys","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2550223943.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2550223943.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2550223943.jpg"},"id":"27115166"},{"rating":{"max":10,"average":8.0,"stars":"40","min":0},"title":"我和我的祖国","collect_count":381667,"mainland_pubdate":"2019-09-30","has_video":false,"original_title":"我和我的祖国","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2567998580.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2567998580.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2567998580.jpg"},"id":"32659890"}]}
/// new_movies : {"tip":"每周五更新~共12部","title":"豆瓣电影新片榜","subjects":[{"rating":{"max":10,"average":9.2,"stars":"50","min":0},"title":"小丑","collect_count":30470,"mainland_pubdate":"","has_video":false,"original_title":"Joker","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2567198874.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2567198874.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2567198874.jpg"},"id":"27119724"},{"rating":{"max":10,"average":6.2,"stars":"35","min":0},"title":"银河补习班","collect_count":219175,"mainland_pubdate":"2019-07-18","has_video":true,"original_title":"银河补习班","subtype":"movie","year":"2019","images":{"small":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2561542089.jpg","large":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2561542089.jpg","medium":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2561542089.jpg"},"id":"30282387"},{"rating":{"max":10,"average":5.4,"stars":"30","min":0},"title":"保持沉默","collect_count":40800,"mainland_pubdate":"2019-08-23","has_video":true,"original_title":"保持沉默","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2565877341.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2565877341.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2565877341.jpg"},"id":"26331839"},{"rating":{"max":10,"average":7.7,"stars":"40","min":0},"title":"安娜","collect_count":59932,"mainland_pubdate":"","has_video":false,"original_title":"Anna","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2553320254.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2553320254.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2553320254.jpg"},"id":"27166976"},{"rating":{"max":10,"average":8.7,"stars":"45","min":0},"title":"寄生虫","collect_count":481990,"mainland_pubdate":"","has_video":false,"original_title":"기생충","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2561439800.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2561439800.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2561439800.jpg"},"id":"27010768"},{"rating":{"max":10,"average":7.6,"stars":"40","min":0},"title":"极限逃生","collect_count":69021,"mainland_pubdate":"","has_video":false,"original_title":"엑시트","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2561571695.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2561571695.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2561571695.jpg"},"id":"30210691"},{"rating":{"max":10,"average":5.4,"stars":"30","min":0},"title":"沉默的证人","collect_count":85028,"mainland_pubdate":"2019-08-16","has_video":true,"original_title":"沉默的证人","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2564369311.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2564369311.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2564369311.jpg"},"id":"26816090"},{"rating":{"max":10,"average":6.5,"stars":"35","min":0},"title":"仲夏夜惊魂","collect_count":20621,"mainland_pubdate":"","has_video":false,"original_title":"Midsommar","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2550004671.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2550004671.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2550004671.jpg"},"id":"30288638"},{"rating":{"max":10,"average":7.9,"stars":"40","min":0},"title":"柳烈的音乐专辑","collect_count":10995,"mainland_pubdate":"","has_video":false,"original_title":"유열의 음악앨범","subtype":"movie","year":"2019","images":{"small":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2561996109.jpg","large":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2561996109.jpg","medium":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2561996109.jpg"},"id":"30225296"},{"rating":{"max":10,"average":3.6,"stars":"20","min":0},"title":"龙牌之谜","collect_count":9432,"mainland_pubdate":"2019-08-16","has_video":true,"original_title":"龙牌之谜","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2563494916.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2563494916.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2563494916.jpg"},"id":"26367602"},{"rating":{"max":10,"average":5.1,"stars":"25","min":0},"title":"深夜食堂","collect_count":20245,"mainland_pubdate":"2019-08-30","has_video":true,"original_title":"深夜食堂","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2566158271.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2566158271.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2566158271.jpg"},"id":"26868553"},{"rating":{"max":10,"average":6.5,"stars":"35","min":0},"title":"大侦探皮卡丘","collect_count":305403,"mainland_pubdate":"2019-05-10","has_video":true,"original_title":"Pokémon Detective Pikachu","subtype":"movie","year":"2019","images":{"small":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2555538168.jpg","large":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2555538168.jpg","medium":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2555538168.jpg"},"id":"26835471"}]}
/// weekly : {"tip":"每周五更新~共10部","title":"豆瓣电影本周口碑榜","subjects":[{"rating":{"max":10,"average":8.0,"stars":"40","min":0},"title":"我和我的祖国","collect_count":381667,"mainland_pubdate":"2019-09-30","has_video":false,"original_title":"我和我的祖国","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2567998580.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2567998580.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2567998580.jpg"},"id":"32659890"},{"rating":{"max":10,"average":7.9,"stars":"40","min":0},"title":"柳烈的音乐专辑","collect_count":10995,"mainland_pubdate":"","has_video":false,"original_title":"유열의 음악앨범","subtype":"movie","year":"2019","images":{"small":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2561996109.jpg","large":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2561996109.jpg","medium":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2561996109.jpg"},"id":"30225296"},{"rating":{"max":10,"average":7.8,"stars":"40","min":0},"title":"时效警察·复活特别篇","collect_count":1187,"mainland_pubdate":"","has_video":false,"original_title":"時効警察・復活スペシャル","subtype":"movie","year":"2019","images":{"small":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2571013037.jpg","large":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2571013037.jpg","medium":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2571013037.jpg"},"id":"34803018"},{"rating":{"max":10,"average":7.6,"stars":"40","min":0},"title":"蜂鸟","collect_count":398,"mainland_pubdate":"","has_video":false,"original_title":"벌새","subtype":"movie","year":"2018","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2544256615.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2544256615.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2544256615.jpg"},"id":"30318230"},{"rating":{"max":10,"average":7.5,"stars":"40","min":0},"title":"翻译家","collect_count":442,"mainland_pubdate":"","has_video":false,"original_title":"Un Traductor","subtype":"movie","year":"2018","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2546996631.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2546996631.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2546996631.jpg"},"id":"27615401"},{"rating":{"max":10,"average":7.5,"stars":"40","min":0},"title":"雪人奇缘","collect_count":9783,"mainland_pubdate":"2019-10-01","has_video":false,"original_title":"Abominable","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2567925521.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2567925521.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2567925521.jpg"},"id":"26929010"},{"rating":{"max":10,"average":7.4,"stars":"40","min":0},"title":"有时候，永远不","collect_count":228,"mainland_pubdate":"","has_video":false,"original_title":"Sometimes, Always Never","subtype":"movie","year":"2018","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2544680815.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2544680815.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2544680815.jpg"},"id":"26803480"},{"rating":{"max":10,"average":7.0,"stars":"35","min":0},"title":"中国机长","collect_count":252233,"mainland_pubdate":"2019-09-30","has_video":false,"original_title":"中国机长","subtype":"movie","year":"2019","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2568261402.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2568261402.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2568261402.jpg"},"id":"30295905"},{"rating":{"max":10,"average":7.0,"stars":"35","min":0},"title":"萤火虫","collect_count":428,"mainland_pubdate":"","has_video":false,"original_title":"জোনাকি","subtype":"movie","year":"2018","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2516371076.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2516371076.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2516371076.jpg"},"id":"30170741"},{"rating":{"max":10,"average":8.5,"stars":"45","min":0},"title":"成就梦想","collect_count":454,"mainland_pubdate":"","has_video":false,"original_title":"Make Us Dream","subtype":"movie","year":"2018","images":{"small":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2540667494.jpg","large":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2540667494.jpg","medium":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2540667494.jpg"},"id":"30368463"}]}
/// category : [{"title":"热门","subjects":[{"rate":"6.2","cover_x":1200,"title":"银河补习班","url":"https://movie.douban.com/subject/30282387/","playable":true,"cover":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2561542089.jpg","id":"30282387","cover_y":1694,"is_new":false},{"rate":"7.7","cover_x":3543,"title":"安娜","url":"https://movie.douban.com/subject/27166976/","playable":false,"cover":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2553320254.jpg","id":"27166976","cover_y":4724,"is_new":false},{"rate":"6.6","cover_x":510,"title":"我的天使","url":"https://movie.douban.com/subject/30141343/","playable":false,"cover":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2565435561.jpg","id":"30141343","cover_y":755,"is_new":true}]},{"title":"最新","subjects":[{"rate":"7.1","cover_x":1500,"title":"特别的她 Progressive","url":"https://movie.douban.com/subject/27080660/","playable":false,"cover":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2516948449.jpg","id":"27080660","cover_y":2122,"is_new":true},{"rate":"6.8","cover_x":1475,"title":"我们无法阻挡","url":"https://movie.douban.com/subject/30186498/","playable":false,"cover":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2525120569.jpg","id":"30186498","cover_y":2048,"is_new":true},{"rate":"5.8","cover_x":2000,"title":"幽灵女孩","url":"https://movie.douban.com/subject/27046734/","playable":false,"cover":"https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2560021039.jpg","id":"27046734","cover_y":3000,"is_new":true}]},{"title":"经典","subjects":[{"rate":"9.7","cover_x":2000,"title":"肖申克的救赎","url":"https://movie.douban.com/subject/1292052/","playable":true,"cover":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p480747492.jpg","id":"1292052","cover_y":2963,"is_new":false},{"rate":"9.6","cover_x":600,"title":"霸王别姬","url":"https://movie.douban.com/subject/1291546/","playable":true,"cover":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2561716440.jpg","id":"1291546","cover_y":889,"is_new":false},{"rate":"9.4","cover_x":658,"title":"这个杀手不太冷","url":"https://movie.douban.com/subject/1295644/","playable":true,"cover":"https://img3.doubanio.com/view/photo/s_ratio_poster/public/p511118051.jpg","id":"1295644","cover_y":980,"is_new":false}]}]

class MovieHomeData {
  List<MovieNews> banners;
  List<Movie> inTheaters;
  List<Movie> soonMovies;
  List<MovieTag> category;
  List<MovieTag> ranges;

  static MovieHomeData fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    MovieHomeData data = MovieHomeData();
    data.banners = List()
      ..addAll((map['banners'] as List ?? []).map((o) => MovieNews.fromMap(o)));
    data.inTheaters = List()
      ..addAll((map['in_theaters'] as List ?? []).map((o) => Movie.fromMap(o)));
    data.soonMovies = List()
      ..addAll((map['soon_movies'] as List ?? []).map((o) => Movie.fromMap(o)));
    data.category = List()
      ..addAll((map['category'] as List ?? []).map((o) => MovieTag.fromMap(o)));
    data.ranges = List()
      ..addAll((map['ranges'] as List ?? []).map((o) => MovieTag.fromMap(o)));
    return data;
  }

  Map toJson() => {
        "banners": banners,
        "in_theaters": inTheaters,
        "soon_movies": soonMovies,
        "ranges": ranges,
        "category": category,
      };
}

class Movie {
  /// 原名
  String originalTitle;

  /// 豆瓣小站
  String douBanSite;

  /// 年代
  String year;

  /// 条目页URL
  String alt;

  /// id
  String id;

  /// 移动版条目页URL
  String mobileUrl;

  /// 兼容性数据，未来会去掉，大陆上映日期，如果条目类型是电影则为上映日期，如果是电视剧则为首播日期
  String pubDate;

  /// 中文名
  String title;

  /// 分享链接
  String shareUrl;

  /// 影讯页URL(movie only)
  String scheduleUrl;

  /// 官方网站
  String website;

  /// 大陆上映日期，如果条目类型是电影则为上映日期，如果是电视剧则为首播日期
  String mainlandPubDate;

  /// 简介
  String summary;

  /// 条目分类, movie或者tv
  String subtype;

  /// 可播放
  bool hasVideo;

  /// 是否预定
  bool hasSchedule;

  /// 是否有票
  bool hasTicket;

  /// 排行
  int rank;

  /// 排名改变量,正数为排名上升，负数为排名下降，0位排名不变（一周口碑榜接口字段）
  int delta;

  /// 票房（美元）（北美票房榜接口字段）
  num box;

  /// 是否新上映
  bool isNew;

  /// 在看人数，如果是电视剧，默认值为0，如果是电影值为null
  int doCount;

  /// 总季数(tv only)
  int seasonsCount;

  /// 收藏
  dynamic collection;

  /// 当前季的集数(tv only)
  String episodesCount;

  /// 当前季数(tv only)
  String currentSeason;

  /// 想看人数
  int wishCount;

  /// 看过人数
  int collectCount;

  /// 剧照数量
  int photosCount;

  /// 评分人数
  int ratingsCount;

  /// 电影海报图，分别提供288px x 465px(大)，96px x 155px(中) 64px x 103px(小)尺寸
  Images images;

  /// 评分
  Rating rating;

  /// 又名
  List<String> aka;

  /// 制片国家/地区
  List<String> countries;

  /// 片长
  List<String> durations;

  /// 影片类型，最多提供3个
  List<String> genres;

  /// 语言
  List<String> languages;

  /// 如果条目类型是电影则为上映日期，如果是电视剧则为首Ï日期
  List<String> pubDates;

  /// 标签
  List<String> tags;

  /// 影人角色
  List<String> roles;

  /// 预告片
  List<Clips> trailers;

  /// 预告片URL，对高级用户以上开放，最多开放4个地址
  List<String> trailerUrls;

  /// 花絮，对高级用户以上开放
  List<Clips> bloopers;

  /// 花絮URL，对高级用户以上开放，最多开放4个地址
  List<String> blooperUrls;

  /// 片段，对高级用户以上开放
  List<Clips> clips;

  /// 片段URL，对高级用户以上开放，最多开放4个地址
  List<String> clipUrls;

  /// 电影剧照，前10张
  List<Photos> photos;

  /// 短评数量
  int commentsCount;

  /// 短评,4条
  List<Reviews> popularComments;

  /// 影评数量
  int reviewsCount;

  /// 影评，前10条
  List<Reviews> popularReviews;

  List<Videos> videos;

  /// 导演
  List<Casts> directors;

  /// 主演，最多可获得4个
  List<Casts> casts;

  /// 编剧
  List<Casts> writers;

  /// 可播放的
  bool playable;

  static Movie fromMap(Map<String, dynamic> map) {
    Movie movie = Movie();
    movie.originalTitle = map['original_title'];
    movie.douBanSite = map['douban_site'];
    movie.playable = map['playable'];
    movie.year = map['year'];
    movie.alt = map['alt'];
    movie.id = map['id'];
    movie.mobileUrl = map['mobile_url'];
    movie.pubDate = map['pubdate'];
    movie.title = map['title'];
    movie.shareUrl = map['share_url'];
    movie.scheduleUrl = map['schedule_url'];
    movie.website = map['website'];
    movie.mainlandPubDate = map['mainland_pubdate'];
    movie.summary = map['summary'];
    movie.subtype = map['subtype'];
    movie.hasVideo = map['has_video'];
    movie.hasSchedule = map['has_schedule'];
    movie.hasTicket = map['has_ticket'];
    movie.doCount = map['do_count'] == null ? 0 : map['do_count'];
    movie.seasonsCount =
        map['seasons_count'] == null ? 0 : map['seasons_count'];
    movie.collection = map['collection'];
    movie.episodesCount =
        map['episodes_count'] == null ? '0' : map['episodes_count'];
    movie.currentSeason =
        map['current_season'] == null ? '0' : map['current_season'];
    movie.reviewsCount = map['reviews_count'];
    movie.wishCount = map['wish_count'];
    movie.collectCount = map['collect_count'];
    movie.photosCount = map['photos_count'];
    movie.commentsCount = map['comments_count'];
    movie.ratingsCount = map['ratings_count'];

    movie.isNew = map['new'];
    movie.box = map['box'];
    movie.rank = map['rank'];
    movie.delta = map['delta'];

    movie.images = map['images'] == null ? null : Images.fromMap(map['images']);
    movie.rating = map['rating'] == null ? null : Rating.fromMap(map['rating']);
    movie.bloopers =
        map['bloopers'] == null ? [] : Clips.fromMapList(map['bloopers']);
    movie.casts = map['casts'] == null ? [] : Casts.fromMapList(map['casts']);
    movie.clips = map['clips'] == null ? [] : Clips.fromMapList(map['clips']);
    movie.directors =
        map['directors'] == null ? [] : Casts.fromMapList(map['directors']);
    movie.photos =
        map['photos'] == null ? [] : Photos.fromMapList(map['photos']);
    movie.popularComments = map['popular_comments'] == null
        ? []
        : Reviews.fromMapList(map['popular_comments']);
    movie.popularReviews = map['popular_reviews'] == null
        ? []
        : Reviews.fromMapList(map['popular_reviews']);
    movie.trailers =
        map['trailers'] == null ? [] : Clips.fromMapList(map['trailers']);
    movie.videos =
        map['videos'] == null ? [] : Videos.fromMapList(map['videos']);
    movie.writers =
        map['writers'] == null ? [] : Casts.fromMapList(map['writers']);

    List<dynamic> aka = map['aka'] == null ? [] : map['aka'];
    movie.aka = List();
    movie.aka.addAll(aka.map((o) => o.toString()));

    List<dynamic> blooperUrls =
        map['blooper_urls'] == null ? [] : map['blooper_urls'];
    movie.blooperUrls = List();
    movie.blooperUrls.addAll(blooperUrls.map((o) => o.toString()));

    List<dynamic> clipUrls = map['clip_urls'] == null ? [] : map['clip_urls'];
    movie.clipUrls = List();
    movie.clipUrls.addAll(clipUrls.map((o) => o.toString()));

    List<dynamic> countries = map['countries'] == null ? [] : map['countries'];
    movie.countries = List();
    movie.countries.addAll(countries.map((o) => o.toString()));

    List<dynamic> durations = map['durations'] == null ? [] : map['durations'];
    movie.durations = List();
    movie.durations.addAll(durations.map((o) => o.toString()));

    List<dynamic> genres = map['genres'] == null ? [] : map['genres'];
    movie.genres = List();
    movie.genres.addAll(genres.map((o) => o.toString()));

    List<dynamic> languages = map['languages'] == null ? [] : map['languages'];
    movie.languages = List();
    movie.languages.addAll(languages.map((o) => o.toString()));

    List<dynamic> pubDates = map['pubdates'] == null ? [] : map['pubdates'];
    movie.pubDates = List();
    movie.pubDates.addAll(pubDates.map((o) => o.toString()));

    List<dynamic> tagList = map['tags'] == null ? [] : map['tags'];
    movie.tags = List();
    movie.tags.addAll(tagList.map((o) => o.toString()));

    List<dynamic> roleList = map['roles'] == null ? [] : map['roles'];
    movie.roles = List();
    movie.roles.addAll(roleList.map((o) => o.toString()));

    List<dynamic> trailerUrlList =
        map['trailer_urls'] == null ? [] : map['trailer_urls'];
    movie.trailerUrls = List();
    movie.trailerUrls.addAll(trailerUrlList.map((o) => o.toString()));

    return movie;
  }

  static List<Movie> fromMapList(dynamic mapList) {
    List<Movie> list = List(mapList.length);
    for (int i = 0; i < mapList.length; i++) {
      list[i] = fromMap(mapList[i]);
    }
    return list;
  }
}
