void leaf() {
  __asm__("setnz %bl");
  }

void main() {
  leaf();
}