void leaf() {
  __asm__("setno -4(%rbp)");
  }

void main() {
  leaf();
}