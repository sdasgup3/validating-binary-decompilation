void leaf() {
  __asm__("sarq %cl, -4(%rbp)");
  }

void main() {
  leaf();
}