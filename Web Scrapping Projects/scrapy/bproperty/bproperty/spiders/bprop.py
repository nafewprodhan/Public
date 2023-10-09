import scrapy


class BpropSpider(scrapy.Spider):
    name = "bprop"
    allowed_domains = ["www.bproperty.com"]
    start_urls = ["https://www.bproperty.com/en/bangladesh/factory-for-rent/"]

    def parse(self, response):
        property_list = response.xpath('//li[@role="article"]')

        for property in property_list:
            link = property.xpath('.//article/div/a/@href').get()
            yield response.follow(url=link, callback=self.parse_property, meta ={"link": link})
            
        next_page_url = response.xpath('//a[@title="Next"]/@href').get()
        if next_page_url:
            yield response.follow(url=next_page_url, callback=self.parse)

    def parse_property(self, response):
        link = response.request.meta['link']
        title = response.xpath('//div/h1/text()')
        price = response.xpath('//span[@aria-label="Price"]/text()')
        location = response.xpath('//div[@aria-label="Property header"]/text()')
        room = response.xpath('//span[@aria-label="Beds"]/span/text()')
        bath = response.xpath('//span[@aria-label="Baths"]/span/text()')
        size = response.xpath('//span[@aria-label="Area"]/span/span/text()')
        typee = response.xpath('//span[@aria-label="Type"]/text()')
        purpose = response.xpath('//span[@aria-label="Purpose"]/text()')
        updated = response.xpath('//span[@aria-label="Updated date"]/text()')

        yield {
            'title': title.get(),
            'price': price.get(),
            'location': location.get(),
            'room': room.get(),
            'bath': bath.get(),
            'size': size.get(),
            'type': typee.get(),
            'purpose': purpose.get(),
            'updated': updated.get(),
            'link': "https://www.bproperty.com/" + link
        }
