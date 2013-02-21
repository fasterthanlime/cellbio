
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
    "Number of A:  %d (%.2f%%)" printfln(counts[0], (counts[0] as Float) * 100.0 / (total as Float))
    "Number of T:  %d (%.2f%%)" printfln(counts[1], (counts[1] as Float) * 100.0 / (total as Float))
    "Number of C:  %d (%.2f%%)" printfln(counts[2], (counts[2] as Float) * 100.0 / (total as Float))
    "Number of G:  %d (%.2f%%)" printfln(counts[3], (counts[3] as Float) * 100.0 / (total as Float))

}


