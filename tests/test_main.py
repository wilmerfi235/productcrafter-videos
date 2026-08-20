from src.main import main


def test_main(capsys):
    main()

    captured = capsys.readouterr()

    assert "ProductCrafter Videos" in captured.out
    assert "Application started successfully." in captured.out
