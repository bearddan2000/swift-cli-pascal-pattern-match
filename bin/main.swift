import Foundation

 /* Function print Nth rows of binomial coeffents*/
 func row(_ k:Int, _ i:Int, _ c:Int, _ out:String) ->  String
 {
     switch k {
     case let x where x == 0:
        return row(k+1, i, c * (i-k)/(k+1), "1, ")
     case let x where x > i:
        return out
     default:
        return row(k+1, i, c * (i-k)/(k+1), out + "\(c), ")
     }

 }
func col(_ n:Int, _ i:Int) -> Void
 {
    switch i {
    case let x where x==n:
        return
    default:
        let out = row(0, i, 1, "")
        print(out);
        return col(n,i+1);
    }
 }
func main() {
  let N = 10

  print("[INPUT] \(N)");
  print("[OUTPUT] ");
  col(N,0);
}

main()
