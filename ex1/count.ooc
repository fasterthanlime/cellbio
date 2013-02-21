
import io/FileReader

main: func {

    fr := FileReader new("adn.txt")

    counts := Int[4] new() // A, T, C, G

    while (fr hasNext?()) {
        c := fr read()
        match c {
            case 'A' => counts[0] = counts[0] + 1
            case 'T' => counts[1] = counts[1] + 1
            case 'C' => counts[2] = counts[2] + 1
            case 'G' => counts[3] = counts[3] + 1
        }
    }

    total: Int
    for (i in 0..4) {
        total += counts[i]
    }

    "Total length: %d" printfln(total)
    print := func (name: String, value: Int) {
        "Number of %s:  %d (%.2f%%)" printfln(name, value, (value as Float) * 100.0 / (total as Float))
    }

    print("A", counts[0])
    print("T", counts[1])
    print("C", counts[2])
    print("G", counts[3])

}


