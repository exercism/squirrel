dofile("nucleotide_count.nut")

NucleotideTest <- class extends Test {
    function test_empty_strand() {
        local counts = Nucleotide.count("")
        assert_equal(0, counts["A"])
        assert_equal(0, counts["C"])
        assert_equal(0, counts["G"])
        assert_equal(0, counts["T"])
    }

    function test_can_count_one_nucleotide_in_single_character_input() {
        local counts = Nucleotide.count("G")
        assert_equal(0, counts["A"])
        assert_equal(0, counts["C"])
        assert_equal(1, counts["G"])
        assert_equal(0, counts["T"])
    }

    function test_strand_with_repeated_nucleotide() {
        local counts = Nucleotide.count("GGGGGGG")
        assert_equal(0, counts["A"])
        assert_equal(0, counts["C"])
        assert_equal(7, counts["G"])
        assert_equal(0, counts["T"])
    }

    function test_strand_with_multiple_nucleotides() {
        local counts = Nucleotide.count(
            "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC"
        )
        assert_equal(20, counts["A"])
        assert_equal(12, counts["C"])
        assert_equal(17, counts["G"])
        assert_equal(21, counts["T"])
    }

    function test_strand_with_invalid_nucleotides() {
        try {
            local counts = Nucleotide.count("AGXXACT")
        } catch(e) {
            assert_equal("Invalid nucleotide in strand", e)
        }
    }
}
