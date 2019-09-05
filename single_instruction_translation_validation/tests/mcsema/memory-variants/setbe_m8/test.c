void leaf() {
  __asm__("setbe -4(%rbp)");
  }

void main() {
  leaf();
}