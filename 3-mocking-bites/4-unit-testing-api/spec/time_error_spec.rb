require 'time_error'

describe TimeError do
  it 'calls API to provide difference in seconds between serve and computer time' do
    requester_double = double :requester
    expect(requester_double).to receive(:get)
      .with(URI("https://worldtimeapi.org/api/ip"))
        .and_return('{"abbreviation":"BST","client_ip":"213.230.194.2","datetime":"2022-10-19T11:07:03.519211+01:00","day_of_week":3,"day_of_year":292,"dst":true,"dst_from":"2022-03-27T01:00:00+00:00","dst_offset":3600,"dst_until":"2022-10-30T01:00:00+00:00","raw_offset":0,"timezone":"Europe/London","unixtime":1666174023,"utc_datetime":"2022-10-19T10:07:03.519211+00:00","utc_offset":"+01:00","week_number":42}')
    time = Time.new(2022, 10, 19, 11, 07, 03)
    time_check = TimeError.new(requester_double)
    expect(time_check.error(time)).to eq 0.519211
  end
end