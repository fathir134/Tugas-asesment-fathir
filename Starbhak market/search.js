$(document).ready(function () {
    //Button sreach
    $("#searchInput").on("input", function () {
        // Get the search value
        var searchValue = $(this).val().toLowerCase();

        $(".card").each(function () {
            var cardTitle = $(this).find(".card-title").text().toLowerCase();
            var cardText = $(this).find(".card-text").text().toLowerCase();

            if (cardTitle.includes(searchValue) || cardText.includes(searchValue)) {
                $(this).show();
            } else {
                $(this).hide();
            }
        });
    });
});