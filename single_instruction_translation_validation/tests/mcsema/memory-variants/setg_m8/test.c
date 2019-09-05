void leaf() {
  __asm__("setg -4(%rbp)");
  }

void main() {
  leaf();
}