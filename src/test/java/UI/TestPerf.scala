package UI

import io.gatling.core.Predef._
import com.intuit.karate.gatling.PreDef._
import scala.concurrent.duration._
import scala.language.postfixOps

class TestPerf extends Simulation{
  val testUI = scenario("IngresoWeb").exec(karateFeature("classpath:UI/IngresoWeb2.feature"))
  setUp(
    testUI.inject(rampUsers(250) during (10 seconds))
  )
}
