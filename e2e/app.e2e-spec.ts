import { WebPTPage } from './app.po';

describe('web-pt App', function() {
  let page: WebPTPage;

  beforeEach(() => {
    page = new WebPTPage();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});
