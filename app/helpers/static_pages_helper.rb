module StaticPagesHelper
  def members
    [
      { name: 'test1', position: 'testrole', introduction: 'my introduction' },
      { name: 'test2', position: '', introduction: 'my introduction' },
      { name: 'test3', position: '', introduction: 'my introduction' }
    ]
  end
end
