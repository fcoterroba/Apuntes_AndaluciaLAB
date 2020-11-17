using System;
using System.Text;
using Azure.Messaging.EventHubs;
using Azure.Messaging.EventHubs.Producer;
using System.IO;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;

namespace fcoterroba
{
    public class datos{
        public string name {get; set;}
        public string surname {get; set;}
    }

    public static class Azure_Function
    {

        private const string connectionString = "Endpoint=sb://fcoterroba-cs.servicebus.windows.net/;SharedAccessKeyName=boss;SharedAccessKey=AN3YyO3B485jo3rlvmYMQcq6VkXmKezjold3VTlTHZU=;EntityPath=fcoterroba-cs";
        private const string eventHubName = "fcoterroba-cs";

        [FunctionName("Azure_Function")]
        public static async Task<IActionResult> Run(
            [HttpTrigger(AuthorizationLevel.Anonymous, "get", "post", Route = null)] HttpRequest req,
            ILogger log)
        {
            log.LogInformation("C# HTTP trigger function processed a request.");

            string name = req.Query["name"];
            string surname = req.Query["surname"];

            string requestBody = await new StreamReader(req.Body).ReadToEndAsync();
            dynamic data = JsonConvert.DeserializeObject(requestBody);
            name = name ?? data?.name;
            surname = surname ?? data?.surname;

            datos misdatos = new datos();
            misdatos.name = name;
            misdatos.surname = surname;

            var misotrosdatos = new {name= "Jose", surname = "Jimenez"};

            string json = JsonConvert.SerializeObject(misdatos);
            string json2 = JsonConvert.SerializeObject(misotrosdatos);

            await using (var producerClient = new EventHubProducerClient(connectionString, eventHubName)){
                using EventDataBatch eventBatch = await producerClient.CreateBatchAsync();

                eventBatch.TryAdd(new EventData(Encoding.UTF8.GetBytes(json)));

                await producerClient.SendAsync(eventBatch);
                Console.WriteLine("A batch of lonely event has been published.");
            }

            string responseMessage = string.IsNullOrEmpty(name) || string.IsNullOrEmpty(surname)
                ? "Esta función trigger HTTP se ha ejecutado correctamente pero no has pasado un nombre o apellido!"
                : $"Hola, tu nombre es {json}, ¿verdad? Esta función trigger HTTP se ha ejecutado correctamente.";

            return new OkObjectResult(responseMessage);
        }
    }
}
