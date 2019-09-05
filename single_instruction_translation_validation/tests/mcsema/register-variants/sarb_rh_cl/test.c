void leaf() {
  __asm__("sarb %cl, %ah");
  }

void main() {
  leaf();
}