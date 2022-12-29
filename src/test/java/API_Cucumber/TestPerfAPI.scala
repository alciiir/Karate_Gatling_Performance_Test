package API_Cucumber
import io.gatling.core.Predef._
import com.intuit.karate.gatling.PreDef._
import scala.concurrent.duration._
import scala.language.postfixOps


class TestPerfAPI extends Simulation {
  val testAPI = scenario("get").exec(karateFeature("classpath:API_Cucumber/get.feature"))
  setUp(
    testAPI.inject(rampUsers(500) during (15 seconds))
  )
}
