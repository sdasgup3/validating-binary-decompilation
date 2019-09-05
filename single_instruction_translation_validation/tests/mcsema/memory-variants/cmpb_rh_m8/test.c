void leaf() {
  __asm__("cmpb -4(%rbp), %ah");
  }

void main() {
  leaf();
}