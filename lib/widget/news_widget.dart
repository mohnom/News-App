
import 'package:flutter/material.dart';
import 'package:sss/models/model_news_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class newscroll extends StatelessWidget {
  newscroll({super.key, required this.newsscrol});
  final ArticleModel newsscrol;
  @override
  Widget build(BuildContext context) {
    final Uri httchrome = Uri.parse(newsscrol.Uri);
    return GestureDetector(
      onTap: () async {
        launchUrl(httchrome);
        if (await canLaunchUrl(httchrome)) {
          await launchUrl(httchrome);
        }
      },
      child: Column(
        children: [
          ClipRRect(borderRadius: BorderRadius.circular(25),
           child:Image.network(newsscrol.image?? 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAYsAAACACAMAAADNjrXOAAAAclBMVEX19fVGREL7+/v4+Pg3NTI+PDrJyMiCgYCQj47+/v7t7e0xLyw8Ojg6NzW1tbSfnp5RUE7c3NxubGtHRUPV1dRlZGJMSkiurq0tKyjv7++amZlfXlypqKfW1tbPz86JiIbk5OS+vr1aWFZ3dnV8e3qNjIt4evpWAAADvUlEQVR4nO3c2ZKiMBiGYciiQsAFl3Zf2/u/xdEGAjabU2AVNfM+B93FAHPwfyYBO4njAAAAAAAAAAAAAAAAAAAAAAAAAACAf58Unnj8evyU712+cTyZP/Z9KaqP8S7p+ZdRNJ2782m0HbwUuZy47LReHm2xxWKpzHyfHR93yqy+CONvSTG4KaW1+6QDFQwPDWmIyfp56XqcFFsezfNuc/KS48HzvGtGhPF3vOPOxDmktIlmdVWU53V8YbhJ/mEaH6+PcYZynhwv3urwEJPyZNwCbSY1YYivML5MXX5qLWfJf6HjhiAXyXGwpWG8T/rToBjFs8yRU/mZFpPknnAcZzFQSRZD8XpMJ/U+eda6NIpHHaebqjDI4gOkX5XEs5DXqtvI4gPktSYLN7h55beRRfe8e5hrBqHR88CEuXRUxQsCWXTOPu48q6Zul/NjtD6Po9xjVeiXDhlk0TmxtG0gjGaefNZVCm9xtU9W+lTaS5FF1x4vy7YzGuW+hZLy23Zd6lzWMMiia94wbRbh6PXjL27pmaD0lY8sOme7ol2hYnbEmJZ1UmTRMVsw1xx+d0TiYs+VdVJk0TFbUHdZ/OwLO2BcyOLzxHcyKIQlbxFipGsGDLLomLdLP/qFLupRzUvyKKVPZPF53jQdEvziSXlMq/lNFp9Xn8UsrWZU8iBFFh0ji/4gi/4gi/4gi/4gi/4gi/4gi/4gi/4gi/4gi/4gi/4gi/4gi/4gi/4gi/54L4uyP4Y7YqvJokv1WZzTLNyyLNKZVelaGLJopzYLx7GTckqm1Ir0VrUgiy7UZ2HPhuNCOe2SMFfFt5JFS/VZiHs6jbM4czCb/HmNS00WLdVnIe3MwcIiDHlIm4XekkUnGsaLbLatOrwUVG5W6RmTLBkmi5Yassg6KVcfct2U8LN1Zdd0qT1ZtNOQRe6p1lV7Ga/PkMK7uDYKO9eWLFpq6qO8e7bwO1ztZ44Q8jzeZQllSwXIoqWmLHKLMB4Co6/XucmttXTNLH3zIIuWGrPIrSEro7JdcciipeZ24X3VhBEOswGdLFpqzsLx9uvKVnHLb9xFFu28kYXjjStahrnn38bJoqVsLUzNReKwCotJ6HD88sUIexa1JCZxlfWtrl5STtSvTY20Gfq/vxZhL6+WfnaO0uXL6TPCn6xMkL7gaaXvs8IOeOxx15LcnLQJo4YoHoRcTKKpDpVeLbcDp2yjTvZ+bEs4/qZ5z03n57sPsfH9jazcMZU9UQEAAAAAAAAAAAAAAAAAAAAAAAAA+K/8ARLlPX0pwy+XAAAAAElFTkSuQmCC'),
           
            
            
           
           ),
          SizedBox(
            height: 14,
          ),
          Text(newsscrol.title ?? ' ',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              )),
          Text(
            newsscrol.title2 ?? ' ',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Text(newsscrol.title3 ?? ' ',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 75, 72, 72),
                fontSize: 10,
              )),
          SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }
}
