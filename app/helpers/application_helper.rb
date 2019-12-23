module ApplicationHelper
  def default_meta_tags
    {
      title: 'Unfowld',
      description: '明治大学ファッションサークルUnfowldのホームページです',
      keywords: 'Unfowld,unfowld,明治大学,ファッション,fashion,サークル,明治',
      icon: [
        { href: image_tag('/logo.png') },
        { href: image_tag('/logo.png'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/jpg' }
      ],
      noindex: nil,
      canonical: request.original_url, # 優先されるurl
      charset: 'UTF-8',
      og: {
        title: :title,
        description: :description,
        type: 'website',
        url: request.original_url,
        image: image_tag('/logo.png'),
        site_name: 'Unfowld',
        locale: 'ja_JP'
      },
      twitter: {
        site: '@ツイッターのアカウント名',
        card: 'summary',
        image: image_tag('/logo.png') # ツイッター専用のイメージ
      }
    }
  end

  def slack_notification(text)
    message = Slack::Notifier.new 'https://hooks.slack.com/services/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'
    message.ping(text)
  end
end
