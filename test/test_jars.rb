require 'test/unit'

require "testing/jars"

class HbaseUtilityTest < Test::Unit::TestCase
  HBaseTestingUtility = org.apache.hadoop.hbase.HBaseTestingUtility

  def setup
    @util = org.apache.hadoop.hbase.HBaseTestingUtility.new
    puts ">>>>>>>>>>>>>>>>>>>>>> STARTING MINI CLUSTER"
    @cluster = @util.startMiniCluster()
  end

  def teardown
    puts ">>>>>>>>>>>>>>>>>>>>>> SHUTTING DOWN MINI CLUSTER"
    @util.shutdownMiniCluster()
    puts ">>>>>>>>>>>>>>>>>>>>>> MINI CLUSTER SHUTDOWN"
  end

  def test_hbase_cluster_runs
    assert_raise( ::NativeException ) { @util.isRunningCluster() }
  end
end
