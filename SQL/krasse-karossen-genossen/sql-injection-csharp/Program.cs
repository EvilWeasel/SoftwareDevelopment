using System.Threading.Tasks;
using MySqlConnector;
class Program
{
  static async Task Main()
  {
    Console.WriteLine("Datenbankverbindung wird hergestellt...");

    const string connectionString = "Server=172.17.0.2;User ID=root;Password=P@ssword;Database=krassekarossengenossen";

    using (var connection = new MySqlConnection(connectionString))
    {
      connection.Open();
      bool exit = false;
      while (!exit)
      {
        Console.Clear();
        // Print all cars
        PrintCarTable(connection);
        // -----------------------
        Console.WriteLine(new string('-', Console.WindowWidth));
        Console.WriteLine("(0) Programm beenden");
        Console.WriteLine("(1) Farben bearbeiten");
        var input = Console.ReadLine();
        if (!int.TryParse(input, out int menuChoice)) break;
        switch (menuChoice)
        {
          case 0:
            Console.WriteLine("Bye!");
            exit = true;
            break;
          case 1:
            while (true)
            {
              Console.Write("Gebe die ID des Autos ein, die du ändern möchtest: ");
              input = Console.ReadLine();
              if (!int.TryParse(input, out int carId))
              {
                Console.WriteLine("Keine gültige ID! Versuche es erneut...");
                continue;
              }
              Console.WriteLine("Gebe nun die neue Farbe an:");
              var color = Console.ReadLine();
              if (string.IsNullOrEmpty(color)) 
              {
                Console.WriteLine("Keine Farbe! Versuche es erneut...");
                continue;
              }
              await ChangeColorOnCar(connection, carId, color);
              Console.WriteLine("Auto geändert. Drücke eine Taste zum Fortfahren...");
              Console.ReadKey();
              break;
            }
            break;
        }
      }

    }

    Console.WriteLine("Datenbankverbindung getrennt...");
    Console.WriteLine("Programm wird beendet!");
  }

  static async Task ChangeColorOnCar(MySqlConnection conn,
    int carId,
    string newColor)
  {
    // print current car
    Console.Clear();
    Console.WriteLine("Aktuelles Auto:");
    string sqlSelectById = $"SELECT * FROM car WHERE id = {carId}";
    using var selectCommand = new MySqlCommand(sqlSelectById, conn);
    using var reader = selectCommand.ExecuteReader();
    PrintResultFromReader(reader);
    await reader.DisposeAsync();

    // change car
    // ... SET color = ''
    string sqlUpdateById = $"UPDATE car SET color = '{newColor}' WHERE id = {carId}";
    using var updateCommand = new MySqlCommand(sqlUpdateById, conn);
    updateCommand.ExecuteNonQuery();

    // print new car with changed color
    using var newReader = selectCommand.ExecuteReader();
    PrintResultFromReader(newReader);
    await newReader.DisposeAsync();
  }

  static void PrintCarTable(MySqlConnection conn)
  {
    const string sqlStatement = "SELECT * FROM car";
    using var command = new MySqlCommand(sqlStatement, conn);
    using var reader = command.ExecuteReader();
    PrintResultFromReader(reader);
  }

  static void PrintResultFromReader(MySqlDataReader reader)
  {
    while (reader.Read())
    {
      var id = reader["id"];
      var make = reader["make"];
      var model = reader["model"];
      var color = reader["color"];
      var gearbox = reader["gearbox"];
      /* var date_of_birth = "No Date";
      if (reader["date_of_birth"].ToString() is string str
        && str.Length > 0)
      {
        date_of_birth =
          DateTime.Parse(str).ToLongDateString();
      } */
      Console.WriteLine(
        $"{id}\t" +
        $"{make}\t" +
        $"{model}\t" +
        $"{color}\t" +
        $"{gearbox}\t"
      );
    }
  }
}
